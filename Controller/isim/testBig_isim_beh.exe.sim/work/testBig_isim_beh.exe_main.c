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
    work_m_00000000002573695860_2992383019_init();
    work_m_00000000002956637933_1393532191_init();
    xilinxcorelib_ver_m_00000000001358910285_2461994410_init();
    xilinxcorelib_ver_m_00000000001687936702_1361346194_init();
    xilinxcorelib_ver_m_00000000000277421008_0172759816_init();
    xilinxcorelib_ver_m_00000000001485706734_1936488693_init();
    work_m_00000000002489990758_0713875128_init();
    work_m_00000000003893435684_1415834462_init();
    work_m_00000000004048624089_3004989777_init();
    work_m_00000000003544042667_1681370832_init();
    work_m_00000000002186679746_3412165680_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002186679746_3412165680");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
