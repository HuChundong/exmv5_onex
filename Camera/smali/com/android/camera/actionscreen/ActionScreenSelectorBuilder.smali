.class public final Lcom/android/camera/actionscreen/ActionScreenSelectorBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "ActionScreenSelectorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/actionscreen/ActionScreenSelector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Action Screen Selector"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/actionscreen/ActionScreenSelector;
    .locals 1

    new-instance v0, Lcom/android/camera/actionscreen/ActionScreenSelector;

    invoke-direct {v0, p1}, Lcom/android/camera/actionscreen/ActionScreenSelector;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/actionscreen/ActionScreenSelectorBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/actionscreen/ActionScreenSelector;

    move-result-object v0

    return-object v0
.end method
