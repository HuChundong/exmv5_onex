.class public abstract Lcom/android/camera/effect/IEffectControlUI;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IEffectControlUI.java"


# instance fields
.field public final effectCenter:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlBarState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlBarTrackingStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlBarTrackingStoppedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final effectControlState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 6

    const/4 v5, 0x3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectControlUI.EffectCenter"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectControlUI.EffectControlBarState"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectControlUI.EffectControlState"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlState:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IEffectControlUI.EffectControlBarTrackingStarted"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IEffectControlUI.EffectControlBarTrackingStopped"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarTrackingStoppedEvent:Lcom/android/camera/event/Event;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method
