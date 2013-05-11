.class public abstract Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;
.super Ljava/lang/Object;
.source "HtcWrapHardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawCallback"
.end annotation


# instance fields
.field final mInnerCallback:Landroid/view/View$DrawCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback$1;

    invoke-direct {v0, p0}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback$1;-><init>(Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;)V

    iput-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;->mInnerCallback:Landroid/view/View$DrawCallback;

    return-void
.end method


# virtual methods
.method public abstract onPostDraw()V
.end method

.method public abstract onPreDraw()V
.end method
