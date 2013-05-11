.class Lcom/android/camera/component/ContinuousBurstUI$3;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstUI$3;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$3;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$800(Lcom/android/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$3;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI$3;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$900(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2715

    iget-object v3, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x14

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    sget v3, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_0
.end method
