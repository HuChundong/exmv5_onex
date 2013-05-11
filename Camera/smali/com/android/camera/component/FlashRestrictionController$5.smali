.class Lcom/android/camera/component/FlashRestrictionController$5;
.super Ljava/lang/Object;
.source "FlashRestrictionController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/FlashRestrictionController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/FlashRestrictionController$5;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$5;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #getter for: Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$800(Lcom/android/camera/component/FlashRestrictionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$5;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$5;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->showWarningToast()V
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$1000(Lcom/android/camera/component/FlashRestrictionController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$5;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/FlashRestrictionController;->access$802(Lcom/android/camera/component/FlashRestrictionController;Z)Z

    :cond_1
    return-void
.end method
