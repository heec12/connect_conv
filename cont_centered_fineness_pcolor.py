import numpy as np
import sys
import matplotlib
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker


def convert2centered(i,dudx,left_cont,right_cont):
    # print(i,right_cont)
    new_dudx = np.zeros(513)
    if right_cont > left_cont:
        cont_diff = (right_cont - left_cont) / 2
        # dudx inside the continents
        for i in range(left_cont,right_cont+1):
            new_dudx[256-int(cont_diff)+i-left_cont] = dudx[i]
        # the rest of the area
        if (left_cont + right_cont) / 2 < 256.0:  # normal left & right; both are on the left side
            for j in range(int(256 - cont_diff)):
                new_dudx[int(256 - cont_diff) - j] = dudx[left_cont - j]
                new_dudx[int(256 + cont_diff) + j] = dudx[right_cont + j]
        else:  # normal left & right; both are on the right side of the model
            right_r_dist = 512 - right_cont
            right_l_dist = right_cont - cont_diff - 256
            for j in range(int(256 - cont_diff)):
                new_dudx[256 - int(cont_diff) - j] = dudx[left_cont-j]
            for j in range(int(right_r_dist)):  # right side with respect to cont located on the right side of the model
                new_dudx[256 + int(cont_diff) + j] = dudx[right_cont+j]
            for j in range(int(right_l_dist)):  # continued right side located on the left side of the model
                new_dudx[256 + int(cont_diff + right_r_dist) + j] = dudx[j]
    elif left_cont > right_cont:
        #print("I'm here")
        cont_diff = (right_cont + 512 - left_cont) / 2
        # dudx inside the continents
        for i in range(left_cont,512): # left cont boundary to 512
            new_dudx[256-int(cont_diff)+i-left_cont] = dudx[i]
        for i in range(right_cont+1):
            new_dudx[256-int(cont_diff)+(512-left_cont)+i] = dudx[i]
        # the rest
        halfway = int((512-2*cont_diff)/2)
        #print(halfway)
        for i in range(right_cont,right_cont+halfway):
            new_dudx[256 + int(cont_diff) + i - right_cont] = dudx[i]
        for i in range(left_cont-halfway,left_cont):
            new_dudx[i-(left_cont-halfway)] = dudx[i]

    return new_dudx, cont_diff


def find_conv_cont(model,N):
    h = '/f'+N
    i = '/u'+N
    j = '/w'+N
    k = '/ha'+N

    # Read f, u, w files
    ffile = model+h
    ufile = model+i
    wfile = model+j
    hafile = model+k

    # Create empty arrays for later purpose
    x_coord = []
    y_coord = []
    chemical = []
    fineness = []


    # # From u files, read u from top nodes
    # with open(ufile) as fp:
    #     line = fp.readline()
    #     while line:
    #         sline = line.split()
    #         y = sline[1]
    #         y = float(y)
    #         u = sline[2]
    #         if y > 0.99 and y < 1.0:
    #             #print(sline)
    #             sur_velx.append(u)
    #         line = fp.readline()

    # From w files, read chemical info
    with open(wfile) as fp:
        line = fp.readline()
        while line:
            sline = line.split()
            y = sline[1]
            y_coord.append(y)
            y = float(y)
            x = sline[0]
            if y > 0.99 and y < 1.0:
                x_coord.append(x)
            chem = sline[3]
            if y > 0.99 and y < 1.0:
                chemical.append(chem)
            line = fp.readline()

    # From w files, read chemical info
    with open(ffile) as fp:
        line = fp.readline()
        while line:
            sline = line.split()
            y = sline[1]
            y_coord.append(y)
            y = float(y)
            alpha = sline[3]
            if y > 0.99 and y < 1.0:
                fineness.append(alpha)
            line = fp.readline()

    # Convert character arrays to float arrays for calculation #
    # sur_velx = np.array(sur_velx).astype(float)
    x_coord = np.array(x_coord).astype(float)
    fineness = np.array(fineness).astype(float)
    chemical = np.array(chemical).astype(float)
    # rtime = np.array(rtime).astype(float)


    temp_margin_loc = []
    temp_margin_loc_index = []
    cont_margin_loc = []
    cont_margin_loc_index = []
    temp_margin_loc_left = []
    temp_margin_loc_right = []
    # Find x-coordinate of where continental margins are
    for i in range(len(chemical)):
        if 0.25 < chemical[i] <= 1.0:
            temp_margin_loc.append(x_coord[i])
    #plt.plot(chemical)
    #plt.show()
    #print(temp_margin_loc)
    #print(temp_margin_loc_index)
    if len(temp_margin_loc) < 2:
        print("something is wrong; margins are not correctly detected")
    elif len(temp_margin_loc) >= 2:
        # print(min(temp_margin_loc),max(temp_margin_loc))
        cont_margin_loc.append(min(temp_margin_loc))
        cont_margin_loc_index.append(int(min(temp_margin_loc)*512/4))
        cont_margin_loc.append(max(temp_margin_loc))
        cont_margin_loc_index.append(int(max(temp_margin_loc) * 512 / 4))
    #print(cont_margin_loc_index)
    # Sort left(0-1) and right(1-0) boundary
    if cont_margin_loc_index[1] - cont_margin_loc_index[0] > 192:
        left_cont = cont_margin_loc_index[1]
        right_cont = cont_margin_loc_index[0]
    else:
        left_cont = cont_margin_loc_index[0]
        right_cont = cont_margin_loc_index[1]
    #print(left_cont,right_cont)
    # Re-find the continental margin if it's splited
    if left_cont >= 450 and right_cont <= 100:
        #print("left is 511 and right is 0")
        for i in range(len(temp_margin_loc)):
            if temp_margin_loc[i] <= 2.0:
                temp_margin_loc_left.append(temp_margin_loc[i])
            else:
                temp_margin_loc_right.append(temp_margin_loc[i])
        #print('Left = ',temp_margin_loc_left,'Right = ',temp_margin_loc_right)
        #print('Max of left = ',max(temp_margin_loc_index_left))
        #print('Min of right = ',min(temp_margin_loc_index_right))
        left_cont = int(min(temp_margin_loc_right) * 512 / 4)
        right_cont = int(max(temp_margin_loc_left) * 512 / 4)

    return left_cont, right_cont, fineness

# Actual running part
model1 = '/rubin/s1/scratch/hxc5400/model_output/dam1_diss_1.2_new_icmobR_crust0975_vis100'
#model2 = '/rubin/s1/scratch/hxc5400/model_output/dam1_diss_1.2_new_icmobR_crust085_vis100_2'
m1 = 101
#m2 = 45

# i= 99
# N1 = str(("{:0>3d}".format(i)))
# left_cont, right_cont, fineness = find_conv_cont(model1,N1)
# print(left_cont,right_cont)
# new_fineness, cont_diff = convert2centered(i,fineness,left_cont,right_cont)
# print(cont_diff)
# reshaped_new_fineness = np.reshape(new_fineness, (len(new_fineness), 1))

fig1, ax = plt.subplots(figsize=(16, 4))
ax.yaxis.set_major_locator(ticker.MultipleLocator(1))
ax.tick_params(axis='x', labelsize=16)
ax.tick_params(axis='y', labelsize=16)

for i in range (m1):
    N1 = str(("{:0>3d}".format(i)))
    left_cont, right_cont, fineness = find_conv_cont(model1,N1)
    new_fineness, cont_diff = convert2centered(i,fineness,left_cont,right_cont)
    reshaped_new_fineness = np.reshape(new_fineness, (len(new_fineness), 1))
    x = [i - 0.5, i + 0.5]
    # y = np.arange(-0.5, len(new_fineness), 1)
    y = np.linspace(-2, 2, len(new_fineness) + 1, endpoint=True)
    imge = ax.pcolormesh(x, y, reshaped_new_fineness, cmap='magma')#, vmin=-20, vmax=20)

# for i in range (m2):
#     N2 = str(("{:0>3d}".format(i)))
#     left_cont, right_cont, fineness = find_conv_cont(model2,N2)
#     new_fineness, cont_diff = convert2centered(i,fineness,left_cont,right_cont)
#     reshaped_new_fineness = np.reshape(new_fineness, (len(new_fineness), 1))
#     x = [m1+i - 0.5, m1+i + 0.5]
#     y = np.arange(-0.5, len(new_fineness), 1)
#     imge = ax.pcolormesh(x, y, reshaped_new_fineness, cmap='magma')#, vmin=-20, vmax=20)


fig1.colorbar(imge, ax=ax)
plt.savefig("/rubin/s1/hxc5400/data/dam1_diss_1.2_new_icmobR_crust0975_vis100/cont_centered_fineness_pcolor_first100.png", dpi=150)
