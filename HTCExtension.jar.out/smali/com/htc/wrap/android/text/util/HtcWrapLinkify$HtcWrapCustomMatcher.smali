.class public Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;
.super Ljava/lang/Object;
.source "HtcWrapLinkify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/text/util/HtcWrapLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcWrapCustomMatcher"
.end annotation


# instance fields
.field customMatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/util/Linkify$CustomMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;->customMatchers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public putCustomMatcher(ILjava/util/regex/Pattern;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 3
    .parameter "mask"
    .parameter "p"
    .parameter "m"
    .parameter "t"

    .prologue
    .line 32
    new-instance v0, Landroid/text/util/Linkify$CustomMatcher;

    invoke-direct {v0}, Landroid/text/util/Linkify$CustomMatcher;-><init>()V

    .line 33
    .local v0, customMatcher:Landroid/text/util/Linkify$CustomMatcher;
    iput-object p2, v0, Landroid/text/util/Linkify$CustomMatcher;->pattern:Ljava/util/regex/Pattern;

    .line 34
    iput-object p3, v0, Landroid/text/util/Linkify$CustomMatcher;->matchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 35
    iput-object p4, v0, Landroid/text/util/Linkify$CustomMatcher;->transformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 36
    iget-object v1, p0, Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;->customMatchers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
