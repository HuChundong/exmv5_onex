.class public Landroid/text/util/Linkify$CustomMatcher;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomMatcher"
.end annotation


# instance fields
.field public matchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public pattern:Ljava/util/regex/Pattern;

.field public transformFilter:Landroid/text/util/Linkify$TransformFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 824
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
