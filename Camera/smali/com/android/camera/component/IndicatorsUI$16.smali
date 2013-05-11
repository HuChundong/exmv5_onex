.class Lcom/android/camera/component/IndicatorsUI$16;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->initializeOverride()V
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
        "Lcom/android/camera/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Duration;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/Duration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1700(Lcom/android/camera/component/IndicatorsUI;)V

    return-void
.end method
