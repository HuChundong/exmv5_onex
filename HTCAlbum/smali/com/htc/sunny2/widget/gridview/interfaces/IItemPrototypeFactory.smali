.class public interface abstract Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;
.super Ljava/lang/Object;
.source "IItemPrototypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<identifier:",
        "Ljava/lang/Object;",
        "prototype:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getFactoryIdentifiers(I)I
.end method

.method public abstract getFactorySize()I
.end method

.method public abstract getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tidentifier;)Tprototype;"
        }
    .end annotation
.end method

.method public abstract getPrototypeByIndex(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Tprototype;"
        }
    .end annotation
.end method
