.class public abstract Lcom/htc/sunnyCore/RenderThreadPreparation;
.super Lcom/htc/sunnyCore/RenderThreadTask;
.source "RenderThreadPreparation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "name"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadTask;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract onProcessPreparationIRT(J)Z
.end method
