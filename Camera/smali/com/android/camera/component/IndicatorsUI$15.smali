.class Lcom/android/camera/component/IndicatorsUI$15;
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
        "Lcom/android/camera/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$15;->this$0:Lcom/android/camera/component/IndicatorsUI;

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
            "Lcom/android/camera/Resolution;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$15;->this$0:Lcom/android/camera/component/IndicatorsUI;

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$15$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/IndicatorsUI$15$1;-><init>(Lcom/android/camera/component/IndicatorsUI$15;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->invokeAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
