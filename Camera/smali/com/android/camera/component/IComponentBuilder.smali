.class public interface abstract Lcom/android/camera/component/IComponentBuilder;
.super Ljava/lang/Object;
.source "IComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract createComponent([Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TTComponent;"
        }
    .end annotation
.end method

.method public abstract getComponentCategory()Lcom/android/camera/component/ComponentCategory;
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public varargs abstract isSupported([Ljava/lang/Object;)Z
.end method
