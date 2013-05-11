.class Lcom/android/camera/component/AutoFocusControllerProxy$1;
.super Lcom/android/camera/component/ComponentBinder;
.source "AutoFocusControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusControllerProxy;-><init>(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/ComponentBinder",
        "<",
        "Lcom/android/camera/IAutoFocusController;",
        "Lcom/android/camera/component/AutoFocusControllerProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusControllerProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusControllerProxy;Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/AutoFocusControllerProxy;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusControllerProxy$1;->this$0:Lcom/android/camera/component/AutoFocusControllerProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/component/ComponentBinder;-><init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Lcom/android/camera/IAutoFocusController;Lcom/android/camera/component/AutoFocusControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/IAutoFocusController;",
            "Lcom/android/camera/component/AutoFocusControllerProxy;",
            ")[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    iget-object v4, p2, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    iget-object v4, p2, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    iget-object v4, p2, Lcom/android/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    iget-object v4, p2, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getEventBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    check-cast p1, Lcom/android/camera/IAutoFocusController;

    check-cast p2, Lcom/android/camera/component/AutoFocusControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/AutoFocusControllerProxy$1;->getEventBindingInfo(Lcom/android/camera/IAutoFocusController;Lcom/android/camera/component/AutoFocusControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Lcom/android/camera/IAutoFocusController;Lcom/android/camera/component/AutoFocusControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/IAutoFocusController;",
            "Lcom/android/camera/component/AutoFocusControllerProxy;",
            ")[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getPropertyBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    check-cast p1, Lcom/android/camera/IAutoFocusController;

    check-cast p2, Lcom/android/camera/component/AutoFocusControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/AutoFocusControllerProxy$1;->getPropertyBindingInfo(Lcom/android/camera/IAutoFocusController;Lcom/android/camera/component/AutoFocusControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method
