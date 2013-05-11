.class public abstract Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;
.super Ljava/lang/Object;
.source "HtcWrapHardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareDrawCallbacks"
.end annotation


# instance fields
.field final mInnerCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks$1;

    invoke-direct {v0, p0}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks$1;-><init>(Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;)V

    iput-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;->mInnerCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    return-void
.end method


# virtual methods
.method public abstract onHardwarePostDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onHardwarePreDraw(Landroid/graphics/Canvas;)V
.end method
