.class Lcom/android/camera/component/NewMediaBroadcaster$4;
.super Lcom/android/camera/trigger/Trigger;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$4;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$4;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-virtual {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$4;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->access$200(Lcom/android/camera/component/NewMediaBroadcaster;)V

    :cond_0
    return-void
.end method
