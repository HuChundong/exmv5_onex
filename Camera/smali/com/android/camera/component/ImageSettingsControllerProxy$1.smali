.class Lcom/android/camera/component/ImageSettingsControllerProxy$1;
.super Lcom/android/camera/component/ComponentBinder;
.source "ImageSettingsControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsControllerProxy;-><init>(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/ComponentBinder",
        "<",
        "Lcom/android/camera/IImageSettingsController;",
        "Lcom/android/camera/component/ImageSettingsControllerProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsControllerProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsControllerProxy;Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/ImageSettingsControllerProxy;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsControllerProxy$1;->this$0:Lcom/android/camera/component/ImageSettingsControllerProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/component/ComponentBinder;-><init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Lcom/android/camera/IImageSettingsController;Lcom/android/camera/component/ImageSettingsControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/IImageSettingsController;",
            "Lcom/android/camera/component/ImageSettingsControllerProxy;",
            ")[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getEventBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    check-cast p1, Lcom/android/camera/IImageSettingsController;

    check-cast p2, Lcom/android/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/ImageSettingsControllerProxy$1;->getEventBindingInfo(Lcom/android/camera/IImageSettingsController;Lcom/android/camera/component/ImageSettingsControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Lcom/android/camera/IImageSettingsController;Lcom/android/camera/component/ImageSettingsControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/IImageSettingsController;",
            "Lcom/android/camera/component/ImageSettingsControllerProxy;",
            ")[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/component/ComponentBinder$BindingInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->brightness:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->contrast:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->iso:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->saturation:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->sharpness:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p1, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    iget-object v4, p2, Lcom/android/camera/IImageSettingsController;->whiteBalance:Lcom/android/camera/property/Property;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/component/ComponentBinder$BindingInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic getPropertyBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1

    check-cast p1, Lcom/android/camera/IImageSettingsController;

    check-cast p2, Lcom/android/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/ImageSettingsControllerProxy$1;->getPropertyBindingInfo(Lcom/android/camera/IImageSettingsController;Lcom/android/camera/component/ImageSettingsControllerProxy;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    move-result-object v0

    return-object v0
.end method
