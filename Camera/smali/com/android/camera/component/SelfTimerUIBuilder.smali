.class public final Lcom/android/camera/component/SelfTimerUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "SelfTimerUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/SelfTimerUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "Self Timer"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/SelfTimerUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/SelfTimerUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/SelfTimerUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/SelfTimerUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/SelfTimerUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
