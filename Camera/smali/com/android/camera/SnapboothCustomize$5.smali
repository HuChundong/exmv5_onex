.class Lcom/android/camera/SnapboothCustomize$5;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SnapboothCustomize;->initPortEffectBar(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothCustomize;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothCustomize;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize$5;->this$0:Lcom/android/camera/SnapboothCustomize;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize$5;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v0}, Lcom/android/camera/SnapboothCustomize;->access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/SnapboothCustomize$5;->this$0:Lcom/android/camera/SnapboothCustomize;

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize$5;->this$0:Lcom/android/camera/SnapboothCustomize;

    #getter for: Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z
    invoke-static {v0}, Lcom/android/camera/SnapboothCustomize;->access$200(Lcom/android/camera/SnapboothCustomize;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z
    invoke-static {v1, v0}, Lcom/android/camera/SnapboothCustomize;->access$202(Lcom/android/camera/SnapboothCustomize;Z)Z

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize$5;->this$0:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothCustomize;->switchMultiBtn()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
