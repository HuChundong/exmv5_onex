.class Lcom/android/camera/actionscreen/ActionScreen$4$1;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/ActionScreen$4;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

.field final synthetic val$e:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreen$4;Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iput-object p2, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->val$e:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    #getter for: Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z
    invoke-static {v0}, Lcom/android/camera/actionscreen/ActionScreen;->access$000(Lcom/android/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->val$e:Lcom/android/camera/MediaEventArgs;

    iget-object v0, v0, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v1, v1, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    #getter for: Lcom/android/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;
    invoke-static {v1}, Lcom/android/camera/actionscreen/ActionScreen;->access$100(Lcom/android/camera/actionscreen/ActionScreen;)Lcom/android/camera/CaptureHandle;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    #getter for: Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z
    invoke-static {v0}, Lcom/android/camera/actionscreen/ActionScreen;->access$400(Lcom/android/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->access$402(Lcom/android/camera/actionscreen/ActionScreen;Z)Z

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->val$e:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->access$502(Lcom/android/camera/actionscreen/ActionScreen;Lcom/android/camera/MediaEventArgs;)Lcom/android/camera/MediaEventArgs;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->this$1:Lcom/android/camera/actionscreen/ActionScreen$4;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen$4;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen$4$1;->val$e:Lcom/android/camera/MediaEventArgs;

    #setter for: Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->access$502(Lcom/android/camera/actionscreen/ActionScreen;Lcom/android/camera/MediaEventArgs;)Lcom/android/camera/MediaEventArgs;

    goto :goto_0
.end method
