.class public final Lcom/htc/utils/HtcCGroupUtil;
.super Ljava/lang/Object;
.source "HtcCGroupUtil.java"


# static fields
.field public static final GROUP_POLICY_ADD:I = 0x1

.field public static final GROUP_POLICY_REMOVE:I

.field public static final GROUP_TYPE_TIMER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSetCgroupPolicy(III)V
.end method

.method public static setCgroupPolicy(III)V
    .locals 0
    .parameter "type"
    .parameter "pid"
    .parameter "policy"

    .prologue
    .line 12
    invoke-static {p0, p1, p2}, Lcom/htc/utils/HtcCGroupUtil;->nativeSetCgroupPolicy(III)V

    .line 13
    return-void
.end method
