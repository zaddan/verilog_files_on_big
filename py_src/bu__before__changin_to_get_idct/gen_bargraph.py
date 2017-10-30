import numpy as np
import matplotlib.pyplot as plt
 
def gen_speedup_bar_plot():
    # data to plot
    n_groups = 3
    #Traditional_delay = (1, 1, 1, 1)
    """ 
    duplicated = ((.209/.223-1), (.743/.686-1), (.825/.673-1))
    delay_profile = (.209/.197 -1,.743/.7075 -1 ,.825/.761-1)
    delay_profile_2 = (.209/.194-1,.743/.732 -1 , .825/.758-1)
    """

    duplicated = ((.209/.223-1), (.743/.686-1), (.825/.673-1))
    delay_profile = (.209/.194-1, .743/.7075 -1 ,.825/.758-1)




    # create plot
    fig, ax = plt.subplots()
    index = np.arange(n_groups)
    bar_width = 0.15
    opacity = 0.8
     
    #rects1 = plt.bar(index, Traditional, bar_width,
    #                 alpha=opacity,
    #                 color='b',
    #                 label='Traditional')
     
    rects2 = plt.bar(index , duplicated, bar_width,
                     alpha=opacity,
                     color='b',
                     label='Duplicated')
     
    rects3 = plt.bar(index + bar_width, delay_profile, bar_width,
                     alpha=opacity,
                     color='g',
                     label='All in One')
     
    """ 
    rects3 = plt.bar(index + 2*bar_width, delay_profile_2, bar_width,
                     alpha=opacity,
                     color='y',
                     label='Delay Profile 2')
     
    """

    plt.xlabel('Hardware Module')
    plt.ylabel('Speed-up (%)')
    plt.title('Speed-up of Different Guardbanding Methods')
    plt.xticks(index + bar_width, ('Add', 'Mul', 'IDCT'))
    plt.legend()
     
    plt.tight_layout()
    plt.savefig("./results_for_paper/method_speedup.png")
    plt.show()


def gen_energy_bar_plot():
    # data to plot
    n_groups = 3
    #Traditional_delay = (1, 1, 1, 1)
    """ 
    duplicated = (.5180/.2858 - 1,17.314/10.962 -1,1.732/1.598 -1)
    delay_profile = (.341007/.2858 -1,14.597/10.962 -1,1.849/1.598 -1)
    delay_profile_2 = (.3270/.2858 -1,15.162/10.962 -1,1.652/1.598 -1)
    """
    duplicated = (.5180/.2858 - 1,17.314/10.962 -1,1.732/1.598 -1)
    delay_profile = (.3270/.2858 -1, 14.597/10.962 -1,1.652/1.598 -1)

    # create plot
    fig, ax = plt.subplots()
    index = np.arange(n_groups)
    bar_width = 0.15
    opacity = 0.8
     
    #rects1 = plt.bar(index, Traditional, bar_width,
    #                 alpha=opacity,
    #                 color='b',
    #                 label='Traditional')
     
    rects2 = plt.bar(index , duplicated, bar_width,
                     alpha=opacity,
                     color='b',
                     label='Duplicated')
     
    rects3 = plt.bar(index + bar_width, delay_profile, bar_width,
                     alpha=opacity,
                     color='g',
                     label='All in One')
     
    """ 
    rects3 = plt.bar(index + 2*bar_width, delay_profile_2, bar_width,
                     alpha=opacity,
                     color='y',
                     label='Delay Profile 2')
    """


    plt.xlabel('Hardware Module')
    plt.ylabel('Energy (%)')
    plt.title('Energy Overhead of Different Guardbanding Methods')
    plt.xticks(index + bar_width, ('Adder', 'Multiplier', 'IDCT'))
    plt.legend()
     
    plt.tight_layout()
    plt.savefig("./results_for_paper/method_energyOverhead.png")
    plt.show()


gen_speedup_bar_plot()
gen_energy_bar_plot()
