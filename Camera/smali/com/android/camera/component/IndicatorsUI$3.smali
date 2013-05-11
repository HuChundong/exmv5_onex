.class Lcom/android/camera/component/IndicatorsUI$3;
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
        "Lcom/android/camera/AutoDetectedScene;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$3;->this$0:Lcom/android/camera/component/IndicatorsUI;

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
            "Lcom/android/camera/AutoDetectedScene;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/AutoDetectedScene;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$3;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$700(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$3;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$700(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0}, Lcom/android/camera/AutoDetectedScene;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
