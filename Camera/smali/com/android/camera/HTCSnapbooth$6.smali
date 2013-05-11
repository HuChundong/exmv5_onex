.class Lcom/android/camera/HTCSnapbooth$6;
.super Landroid/view/OrientationEventListener;
.source "HTCSnapbooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, "HTCSnapbooth"

    const-string v1, "Unknown orientation !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I
    invoke-static {v0, p1}, Lcom/android/camera/HTCSnapbooth;->access$3202(Lcom/android/camera/HTCSnapbooth;I)I

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$900(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I
    invoke-static {v0, p1}, Lcom/android/camera/HTCSnapbooth;->access$3302(Lcom/android/camera/HTCSnapbooth;I)I

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    #calls: Lcom/android/camera/HTCSnapbooth;->onRotateChanged(Lcom/android/camera/rotate/UIRotation;)Z
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$3400(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/rotate/UIRotation;)Z

    goto :goto_0
.end method
