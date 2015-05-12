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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//psf/Home/Desktop/github/DigitalProject2/VGA/Controller/ColorSelector.v";
static unsigned int ng1[] = {31U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {7U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {144U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {0U, 0U};
static int ng8[] = {1, 0};
static int ng9[] = {2, 0};
static int ng10[] = {3, 0};
static int ng11[] = {4, 0};
static int ng12[] = {5, 0};
static int ng13[] = {6, 0};
static int ng14[] = {7, 0};



static void Cont_47_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t18[8];
    char t20[8];
    char t22[8];
    char t55[8];
    char t58[8];
    char t60[8];
    char t62[8];
    char t95[8];
    char t96[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t19;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    char *t57;
    char *t59;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;

LAB0:    t1 = (t0 + 3920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2440U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t97 = *((unsigned int *)t4);
    t98 = (~(t97));
    t99 = *((unsigned int *)t12);
    t100 = (t98 || t99);
    if (t100 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t101, 8);

LAB16:    t102 = (t0 + 6432);
    t103 = (t102 + 56U);
    t104 = *((char **)t103);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    memcpy(t106, t3, 8);
    xsi_driver_vfirst_trans(t102, 0, 31);
    t107 = (t0 + 6224);
    *((int *)t107) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 1640U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_minus(t18, 32, t17, 10, t16, 10);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_minus(t20, 32, t18, 32, t19, 32);
    t21 = ((char*)((ng3)));
    t23 = *((unsigned int *)t20);
    t24 = *((unsigned int *)t21);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t26 = (t20 + 4);
    t27 = (t21 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB17;

LAB18:
LAB19:    t54 = ((char*)((ng4)));
    memset(t55, 0, 8);
    xsi_vlog_unsigned_lshift(t55, 32, t22, 32, t54, 10);
    t56 = (t0 + 1480U);
    t57 = *((char **)t56);
    t56 = ((char*)((ng5)));
    memset(t58, 0, 8);
    xsi_vlog_unsigned_minus(t58, 32, t57, 10, t56, 10);
    t59 = ((char*)((ng2)));
    memset(t60, 0, 8);
    xsi_vlog_unsigned_minus(t60, 32, t58, 32, t59, 32);
    t61 = ((char*)((ng3)));
    t63 = *((unsigned int *)t60);
    t64 = *((unsigned int *)t61);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t60 + 4);
    t67 = (t61 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB20;

LAB21:
LAB22:    t94 = ((char*)((ng6)));
    memset(t95, 0, 8);
    xsi_vlog_unsigned_lshift(t95, 32, t62, 32, t94, 10);
    memset(t96, 0, 8);
    xsi_vlog_unsigned_add(t96, 32, t55, 32, t95, 32);
    goto LAB9;

LAB10:    t101 = ((char*)((ng7)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t96, 32, t101, 32);
    goto LAB16;

LAB14:    memcpy(t3, t96, 8);
    goto LAB16;

LAB17:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    t36 = (t20 + 4);
    t37 = (t21 + 4);
    t38 = *((unsigned int *)t20);
    t39 = (~(t38));
    t40 = *((unsigned int *)t36);
    t41 = (~(t40));
    t42 = *((unsigned int *)t21);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = (t39 & t41);
    t47 = (t43 & t45);
    t48 = (~(t46));
    t49 = (~(t47));
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t51 & t49);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    t53 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t53 & t49);
    goto LAB19;

LAB20:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t60 + 4);
    t77 = (t61 + 4);
    t78 = *((unsigned int *)t60);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t61);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB22;

}

static void Cont_49_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 4168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t8, 32, 2);
    t7 = (t0 + 6496);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t12, 0, 8);
    t13 = 1U;
    t14 = t13;
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t4);
    t13 = (t13 & t16);
    t17 = *((unsigned int *)t15);
    t14 = (t14 & t17);
    t18 = (t12 + 4);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t19 | t13);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t20 | t14);
    xsi_driver_vfirst_trans(t7, 0, 0);
    t21 = (t0 + 6240);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_50_2(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 4416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng8)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6560);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 1, 1);
    t23 = (t0 + 6256);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_51_3(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 4664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng9)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6624);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 2, 2);
    t23 = (t0 + 6272);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_53_4(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 4912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng10)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6688);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t23 = (t0 + 6288);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_54_5(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 5160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng11)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6752);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 1, 1);
    t23 = (t0 + 6304);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_55_6(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 5408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng12)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6816);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 2, 2);
    t23 = (t0 + 6320);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_57_7(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 5656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng13)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6880);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 0, 0);
    t23 = (t0 + 6336);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_58_8(char *t0)
{
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 5904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2760U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng14)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 6944);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 1U;
    t16 = t15;
    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t10, 1, 1);
    t23 = (t0 + 6352);
    *((int *)t23) = 1;

LAB1:    return;
}


extern void work_m_00000000001239257977_3004989777_init()
{
	static char *pe[] = {(void *)Cont_47_0,(void *)Cont_49_1,(void *)Cont_50_2,(void *)Cont_51_3,(void *)Cont_53_4,(void *)Cont_54_5,(void *)Cont_55_6,(void *)Cont_57_7,(void *)Cont_58_8};
	xsi_register_didat("work_m_00000000001239257977_3004989777", "isim/testBig_isim_beh.exe.sim/work/m_00000000001239257977_3004989777.didat");
	xsi_register_executes(pe);
}
