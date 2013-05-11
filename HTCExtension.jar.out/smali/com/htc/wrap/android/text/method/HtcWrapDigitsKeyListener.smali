.class public Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;
.super Landroid/text/method/DigitsKeyListener;
.source "HtcWrapDigitsKeyListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "sign"
    .parameter "decimal"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 13
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0
    .parameter "sign"
    .parameter "decimal"
    .parameter "phone"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/DigitsKeyListener;-><init>(ZZZ)V

    .line 20
    return-void
.end method

.method public static getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .parameter "sign"
    .parameter "decimal"
    .parameter "phone"

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method
