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
static const char *ng0 = "//psf/Home/Documents/VGA/Controller/ColorSelector.v";
static unsigned int ng1[] = {4294967295U, 0U, 4278190080U, 0U, 16777215U, 0U, 4294901760U, 0U, 16777215U, 0U, 197379U, 0U, 50397183U, 0U, 4278190851U, 0U, 50397183U, 0U, 771U, 0U, 0U, 0U, 4278190851U, 0U, 50397183U, 0U, 3U, 0U, 0U, 0U, 4294901760U, 0U, 6226175U, 0U, 12582915U, 0U, 0U, 0U, 4278214495U, 0U, 56557823U, 0U, 0U, 0U, 50528256U, 0U, 6250335U, 0U, 50397183U, 0U, 197376U, 0U, 50529024U, 0U, 6250243U, 0U, 16777215U, 0U, 50528256U, 0U, 50528256U, 0U, 4278190083U, 0U, 4294967295U, 0U, 1600085760U, 0U, 24415U, 0U, 4294967040U, 0U, 16777215U, 0U, 0U, 0U, 6250335U, 0U, 4294967040U, 0U, 1593901055U, 0U, 1593859935U, 0U, 1593835615U, 0U, 4294901855U, 0U, 1593901055U, 0U, 6250335U, 0U, 1593835615U, 0U, 4294901855U, 0U, 16777215U, 0U, 6225920U, 0U, 24415U, 0U, 4294967040U, 0U, 50397183U, 0U, 50529027U, 0U, 50529027U, 0U, 4294967040U, 0U, 16777215U, 0U, 50528256U, 0U, 197379U, 0U, 4294967295U, 0U, 4294967295U, 0U, 65535U, 0U, 4278190080U, 0U, 4294967295U, 0U, 0U, 0U};
static unsigned int ng2[] = {1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 523193163U, 0U, 790580043U, 0U, 522144587U, 0U, 522144587U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263218463U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 525016863U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 522144587U, 0U, 522144559U, 0U, 522144587U, 0U, 522144587U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263218463U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 522144587U, 0U, 522144587U, 0U, 525028171U, 0U, 522144587U, 0U, 1261379359U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 1263214367U, 0U, 1263214411U, 0U, 1263214367U, 0U, 1263214367U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263214367U, 0U, 1263218463U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 522144587U, 0U, 0U, 0U};
static unsigned int ng3[] = {3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 3233857728U, 0U, 0U, 0U};
static unsigned int ng4[] = {3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 3318072773U, 0U, 0U, 0U};
static unsigned int ng5[] = {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};
static int ng6[] = {2048, 0};
static unsigned int ng7[] = {31U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {15U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {144U, 0U};
static unsigned int ng12[] = {3U, 0U};
static int ng13[] = {8, 0};
static unsigned int ng14[] = {4U, 0U};
static int ng15[] = {1, 0};
static int ng16[] = {2, 0};
static int ng17[] = {3, 0};
static int ng18[] = {4, 0};
static int ng19[] = {5, 0};
static int ng20[] = {6, 0};
static int ng21[] = {7, 0};



static void Cont_36_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 8096);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 2049);
    xsi_driver_vfirst_trans(t3, 8196, 10244);

LAB1:    return;
}

static void Cont_37_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8160);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 2049);
    xsi_driver_vfirst_trans(t3, 6147, 8195);

LAB1:    return;
}

static void Cont_38_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8224);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 2049);
    xsi_driver_vfirst_trans(t3, 4098, 6146);

LAB1:    return;
}

static void Cont_39_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8288);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 2049);
    xsi_driver_vfirst_trans(t3, 2049, 4097);

LAB1:    return;
}

static void Cont_40_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8352);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 2049);
    xsi_driver_vfirst_trans(t3, 0, 2048);

LAB1:    return;
}

static void Cont_49_5(char *t0)
{
    char t4[520];
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 5320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2760U);
    t3 = *((char **)t2);
    t2 = (t0 + 2720U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2720U);
    t8 = (t7 + 48U);
    t9 = *((char **)t8);
    t10 = (t0 + 1800U);
    t11 = *((char **)t10);
    xsi_vlog_generic_get_array_select_value(t4, 2049, t3, t6, t9, 2, 1, t11, 4, 2);
    t10 = (t0 + 8416);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    xsi_vlog_bit_copy(t15, 0, t4, 0, 2049);
    xsi_driver_vfirst_trans(t10, 0, 2048);
    t16 = (t0 + 7872);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_58_6(char *t0)
{
    char t3[8];
    char t4[8];
    char t19[8];
    char t21[8];
    char t23[8];
    char t56[8];
    char t57[8];
    char t60[8];
    char t62[8];
    char t64[8];
    char t97[8];
    char t98[8];
    char t100[8];
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
    char *t18;
    char *t20;
    char *t22;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t58;
    char *t59;
    char *t61;
    char *t63;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    int t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t99;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;

LAB0:    t1 = (t0 + 5568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
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

LAB9:    t101 = *((unsigned int *)t4);
    t102 = (~(t101));
    t103 = *((unsigned int *)t12);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t105, 8);

LAB16:    t106 = (t0 + 8480);
    t107 = (t106 + 56U);
    t108 = *((char **)t107);
    t109 = (t108 + 56U);
    t110 = *((char **)t109);
    memcpy(t110, t3, 8);
    xsi_driver_vfirst_trans(t106, 0, 31);
    t111 = (t0 + 7888);
    *((int *)t111) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng6)));
    t17 = (t0 + 1640U);
    t18 = *((char **)t17);
    t17 = ((char*)((ng7)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_minus(t19, 32, t18, 10, t17, 10);
    t20 = ((char*)((ng8)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_minus(t21, 32, t19, 32, t20, 32);
    t22 = ((char*)((ng9)));
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 & t25);
    *((unsigned int *)t23) = t26;
    t27 = (t21 + 4);
    t28 = (t22 + 4);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t28);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB17;

LAB18:
LAB19:    t55 = ((char*)((ng10)));
    memset(t56, 0, 8);
    xsi_vlog_unsigned_lshift(t56, 32, t23, 32, t55, 10);
    memset(t57, 0, 8);
    xsi_vlog_unsigned_minus(t57, 32, t16, 32, t56, 32);
    t58 = (t0 + 1480U);
    t59 = *((char **)t58);
    t58 = ((char*)((ng11)));
    memset(t60, 0, 8);
    xsi_vlog_unsigned_minus(t60, 32, t59, 10, t58, 10);
    t61 = ((char*)((ng8)));
    memset(t62, 0, 8);
    xsi_vlog_unsigned_minus(t62, 32, t60, 32, t61, 32);
    t63 = ((char*)((ng9)));
    t65 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t63);
    t67 = (t65 & t66);
    *((unsigned int *)t64) = t67;
    t68 = (t62 + 4);
    t69 = (t63 + 4);
    t70 = (t64 + 4);
    t71 = *((unsigned int *)t68);
    t72 = *((unsigned int *)t69);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = *((unsigned int *)t70);
    t75 = (t74 != 0);
    if (t75 == 1)
        goto LAB20;

LAB21:
LAB22:    t96 = ((char*)((ng12)));
    memset(t97, 0, 8);
    xsi_vlog_unsigned_lshift(t97, 32, t64, 32, t96, 10);
    memset(t98, 0, 8);
    xsi_vlog_unsigned_minus(t98, 32, t57, 32, t97, 32);
    t99 = ((char*)((ng13)));
    memset(t100, 0, 8);
    xsi_vlog_unsigned_minus(t100, 32, t98, 32, t99, 32);
    goto LAB9;

LAB10:    t105 = ((char*)((ng14)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t100, 32, t105, 32);
    goto LAB16;

LAB14:    memcpy(t3, t100, 8);
    goto LAB16;

LAB17:    t35 = *((unsigned int *)t23);
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t23) = (t35 | t36);
    t37 = (t21 + 4);
    t38 = (t22 + 4);
    t39 = *((unsigned int *)t21);
    t40 = (~(t39));
    t41 = *((unsigned int *)t37);
    t42 = (~(t41));
    t43 = *((unsigned int *)t22);
    t44 = (~(t43));
    t45 = *((unsigned int *)t38);
    t46 = (~(t45));
    t47 = (t40 & t42);
    t48 = (t44 & t46);
    t49 = (~(t47));
    t50 = (~(t48));
    t51 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t51 & t49);
    t52 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t52 & t50);
    t53 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t53 & t49);
    t54 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t54 & t50);
    goto LAB19;

LAB20:    t76 = *((unsigned int *)t64);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t64) = (t76 | t77);
    t78 = (t62 + 4);
    t79 = (t63 + 4);
    t80 = *((unsigned int *)t62);
    t81 = (~(t80));
    t82 = *((unsigned int *)t78);
    t83 = (~(t82));
    t84 = *((unsigned int *)t63);
    t85 = (~(t84));
    t86 = *((unsigned int *)t79);
    t87 = (~(t86));
    t88 = (t81 & t83);
    t89 = (t85 & t87);
    t90 = (~(t88));
    t91 = (~(t89));
    t92 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t92 & t90);
    t93 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t93 & t91);
    t94 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t94 & t90);
    t95 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t95 & t91);
    goto LAB22;

}

static void Cont_60_7(char *t0)
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

LAB0:    t1 = (t0 + 5816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t8, 32, 2);
    t7 = (t0 + 8544);
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
    t21 = (t0 + 7904);
    *((int *)t21) = 1;

LAB1:    return;
}

static void Cont_61_8(char *t0)
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

LAB0:    t1 = (t0 + 6064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng15)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8608);
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
    t23 = (t0 + 7920);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_62_9(char *t0)
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

LAB0:    t1 = (t0 + 6312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng16)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8672);
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
    t23 = (t0 + 7936);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_64_10(char *t0)
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

LAB0:    t1 = (t0 + 6560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng17)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8736);
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
    t23 = (t0 + 7952);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_65_11(char *t0)
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

LAB0:    t1 = (t0 + 6808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng18)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8800);
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
    t23 = (t0 + 7968);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_66_12(char *t0)
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

LAB0:    t1 = (t0 + 7056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng19)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8864);
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
    t23 = (t0 + 7984);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_68_13(char *t0)
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

LAB0:    t1 = (t0 + 7304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng20)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8928);
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
    t23 = (t0 + 8000);
    *((int *)t23) = 1;

LAB1:    return;
}

static void Cont_69_14(char *t0)
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

LAB0:    t1 = (t0 + 7552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = (t0 + 2920U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng21)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    xsi_vlog_generic_get_index_select_value(t4, 1, t3, t6, 2, t9, 32, 2);
    t10 = (t0 + 8992);
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
    t23 = (t0 + 8016);
    *((int *)t23) = 1;

LAB1:    return;
}


extern void work_m_00000000004048624089_3004989777_init()
{
	static char *pe[] = {(void *)Cont_36_0,(void *)Cont_37_1,(void *)Cont_38_2,(void *)Cont_39_3,(void *)Cont_40_4,(void *)Cont_49_5,(void *)Cont_58_6,(void *)Cont_60_7,(void *)Cont_61_8,(void *)Cont_62_9,(void *)Cont_64_10,(void *)Cont_65_11,(void *)Cont_66_12,(void *)Cont_68_13,(void *)Cont_69_14};
	xsi_register_didat("work_m_00000000004048624089_3004989777", "isim/testBig_isim_beh.exe.sim/work/m_00000000004048624089_3004989777.didat");
	xsi_register_executes(pe);
}
