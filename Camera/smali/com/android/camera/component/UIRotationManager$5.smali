.class Lcom/android/camera/component/UIRotationManager$5;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIRotationManager;->initializeOverride()V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$5;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$5;->this$0:Lcom/android/camera/component/UIRotationManager;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/UIRotationManager;->access$400(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$5;->this$0:Lcom/android/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager$5;->this$0:Lcom/android/camera/component/UIRotationManager;

    iget-object v1, v1, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
