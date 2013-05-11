.class Lcom/android/camera/HTCSnapbooth$2;
.super Landroid/content/BroadcastReceiver;
.source "HTCSnapbooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCSnapbooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsKeyguardVisible:Z
    invoke-static {v0, v2}, Lcom/android/camera/HTCSnapbooth;->access$102(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->restartScreenSaveTimer()V

    invoke-static {}, Lcom/android/camera/HTCSnapbooth;->access$200()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "HTCSnapbooth"

    const-string v1, "unlock screen - can show UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$300(Lcom/android/camera/HTCSnapbooth;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$400(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$2;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->setWaitKeyguardBeforePreview(Z)V

    :cond_1
    return-void
.end method
