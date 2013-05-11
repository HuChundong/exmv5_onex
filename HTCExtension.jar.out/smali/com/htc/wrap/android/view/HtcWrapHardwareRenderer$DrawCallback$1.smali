.class Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback$1;
.super Ljava/lang/Object;
.source "HtcWrapHardwareRenderer.java"

# interfaces
.implements Landroid/view/View$DrawCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;


# direct methods
.method constructor <init>(Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback$1;->this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostDraw()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback$1;->this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;

    invoke-virtual {v0}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;->onPostDraw()V

    .line 138
    return-void
.end method

.method public onPreDraw()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback$1;->this$0:Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;

    invoke-virtual {v0}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;->onPreDraw()V

    .line 134
    return-void
.end method
