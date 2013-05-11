.class Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$EventObserver;
.super Landroid/database/ContentObserver;
.source "SmartFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 924
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 930
    return-void
.end method
