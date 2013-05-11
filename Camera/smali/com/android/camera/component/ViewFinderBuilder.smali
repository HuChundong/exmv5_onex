.class public final Lcom/android/camera/component/ViewFinderBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "ViewFinderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/ViewFinder;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "View Finder"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/ViewFinderBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ViewFinder;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ViewFinder;
    .locals 1

    new-instance v0, Lcom/android/camera/component/ViewFinder;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ViewFinder;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
