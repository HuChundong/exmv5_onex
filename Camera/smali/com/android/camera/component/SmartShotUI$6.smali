.class Lcom/android/camera/component/SmartShotUI$6;
.super Ljava/lang/Object;
.source "SmartShotUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmartShotUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/imaging/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmartShotUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmartShotUI$6;->this$0:Lcom/android/camera/component/SmartShotUI;

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
            "Lcom/android/camera/imaging/Size;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v5, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v5, Lcom/android/camera/imaging/Size;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$6;->this$0:Lcom/android/camera/component/SmartShotUI;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotUI$6;->this$0:Lcom/android/camera/component/SmartShotUI;

    const/4 v2, 0x7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmartShotUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    return-void
.end method
