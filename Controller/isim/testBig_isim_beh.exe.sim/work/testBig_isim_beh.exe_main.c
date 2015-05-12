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
    unisims_ver_m_00000000001946988858_2297623829_init();
    unisims_ver_m_00000000000145299749_1583288411_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    work_m_00000000000045942259_1980478021_init();
    work_m_00000000002573695860_2992383019_init();
    work_m_00000000002956637933_1393532191_init();
    xilinxcorelib_ver_m_00000000001358910285_2800433350_init();
    xilinxcorelib_ver_m_00000000001687936702_3631622721_init();
    xilinxcorelib_ver_m_00000000000277421008_2786561626_init();
    xilinxcorelib_ver_m_00000000001485706734_3788737086_init();
    work_m_00000000002489990758_2433764194_init();
    work_m_00000000000150983043_1415834462_init();
    xilinxcorelib_ver_m_00000000001358910285_0406668203_init();
    xilinxcorelib_ver_m_00000000001687936702_2105488399_init();
    xilinxcorelib_ver_m_00000000000277421008_2574693233_init();
    xilinxcorelib_ver_m_00000000001485706734_2192205004_init();
    work_m_00000000002489990758_0486070219_init();
    work_m_00000000001239257977_3004989777_init();
    work_m_00000000001978101864_1681370832_init();
    work_m_00000000002186679746_3412165680_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002186679746_3412165680");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
