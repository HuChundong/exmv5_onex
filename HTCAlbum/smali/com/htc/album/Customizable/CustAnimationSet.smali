.class public Lcom/htc/album/Customizable/CustAnimationSet;
.super Ljava/lang/Object;
.source "CustAnimationSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationIn()[I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xat 0x1t
        0x13t 0x0t 0x4t 0x7ft
        0x14t 0x0t 0x4t 0x7ft
        0xct 0x0t 0x4t 0x7ft
        0x5t 0x0t 0x4t 0x7ft
        0xft 0x0t 0x4t 0x7ft
        0x18t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public static getAnimationOut()[I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0xat 0x1t
        0x15t 0x0t 0x4t 0x7ft
        0x17t 0x0t 0x4t 0x7ft
        0xdt 0x0t 0x4t 0x7ft
        0x6t 0x0t 0x4t 0x7ft
        0x11t 0x0t 0x4t 0x7ft
        0x19t 0x0t 0x4t 0x7ft
    .end array-data
.end method
