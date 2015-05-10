/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001171444394_1393532191_init();
    xilinxcorelib_ver_m_00000000001358910285_2426511774_init();
    xilinxcorelib_ver_m_00000000001687936702_2294628509_init();
    xilinxcorelib_ver_m_00000000000277421008_2129508590_init();
    xilinxcorelib_ver_m_00000000001485706734_2627013463_init();
    work_m_00000000002489990758_2913916462_init();
    work_m_00000000001407365992_1415834462_init();
    xilinxcorelib_ver_m_00000000001358910285_3876993974_init();
    xilinxcorelib_ver_m_00000000001687936702_2105488399_init();
    xilinxcorelib_ver_m_00000000000277421008_3843364363_init();
    xilinxcorelib_ver_m_00000000001485706734_2492916256_init();
    work_m_00000000002489990758_0170851326_init();
    work_m_00000000003631329354_3004989777_init();
    work_m_00000000002918085930_1681370832_init();
    work_m_00000000002186679746_3412165680_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002186679746_3412165680");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
