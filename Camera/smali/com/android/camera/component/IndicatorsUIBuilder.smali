.class public final Lcom/android/camera/component/IndicatorsUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "IndicatorsUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/IndicatorsUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "Indicators"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/IndicatorsUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/IndicatorsUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/IndicatorsUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/IndicatorsUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/IndicatorsUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
