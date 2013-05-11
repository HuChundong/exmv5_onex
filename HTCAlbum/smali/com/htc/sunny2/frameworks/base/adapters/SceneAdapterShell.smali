.class public Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapterShell;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "SceneAdapterShell.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SceneAdapterShell"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "SceneAdapterShell"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
