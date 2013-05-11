.class Lcom/android/camera/bi/ContinuousBurstStatisticController$1;
.super Ljava/lang/Object;
.source "ContinuousBurstStatisticController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/ContinuousBurstStatisticController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/ContinuousBurstStatisticController;Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iput-object p2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/MediaEventArgs;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    invoke-static {v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$008(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    iget-boolean v0, p3, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_bi_continuousburst_history"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_bi_continuousburst_history"

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v1, v1, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$100(Lcom/android/camera/bi/ContinuousBurstStatisticController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count complete =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #setter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v0, v3}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$002(Lcom/android/camera/bi/ContinuousBurstStatisticController;I)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method
