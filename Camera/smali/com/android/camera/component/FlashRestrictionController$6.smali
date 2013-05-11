.class Lcom/android/camera/component/FlashRestrictionController$6;
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

    iput-object p1, p0, Lcom/android/camera/component/FlashRestrictionController$6;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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

    const/16 v2, 0x8

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController$6;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V
    invoke-static {v1, v0, v2}, Lcom/android/camera/component/FlashRestrictionController;->access$1100(Lcom/android/camera/component/FlashRestrictionController;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
