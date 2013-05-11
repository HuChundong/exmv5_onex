.class Landroid/webkit/WebViewCore$UpdateSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateSelectionData"
.end annotation


# instance fields
.field mNewQuery:Ljava/lang/String;

.field mOldQuery:Ljava/lang/String;

.field mShouldRedrawSelection:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "oldQuery"
    .parameter "newQuery"
    .parameter "shouldRedrawSelection"

    .prologue
    .line 1043
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput-object p1, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mOldQuery:Ljava/lang/String;

    .line 1045
    iput-object p2, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mNewQuery:Ljava/lang/String;

    .line 1046
    iput-boolean p3, p0, Landroid/webkit/WebViewCore$UpdateSelectionData;->mShouldRedrawSelection:Z

    .line 1047
    return-void
.end method
