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
    xilinxcorelib_ver_m_00000000001358910285_0406668203_init();
    xilinxcorelib_ver_m_00000000001687936702_2105488399_init();
    xilinxcorelib_ver_m_00000000000277421008_2574693233_init();
    xilinxcorelib_ver_m_00000000001485706734_2192205004_init();
    work_m_00000000002489990758_0486070219_init();
    work_m_00000000001239257977_3004989777_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001239257977_3004989777");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
