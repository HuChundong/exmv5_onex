.class public abstract Landroid/webkit/AnimatedCustomViewCallback;
.super Ljava/lang/Object;
.source "AnimatedCustomViewCallback.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnimationDelay()J
.end method

.method public abstract onCustomViewHidden()V
.end method

.method public abstract onCustomViewHiddenAnimationStart()V
.end method
