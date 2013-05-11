.class Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "HtcPreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/preference/HtcPreferenceGroupAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$402(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;)I
    .locals 3
    .parameter "other"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, compareNames:I
    if-nez v0, :cond_0

    .line 98
    iget v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v1, v2, :cond_2

    .line 99
    iget v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v1, v2, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 108
    .end local v0           #compareNames:I
    :cond_0
    :goto_0
    return v0

    .line 102
    .restart local v0       #compareNames:I
    :cond_1
    iget v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 105
    :cond_2
    iget v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->resId:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;->compareTo(Lcom/htc/preference/HtcPreferenceGroupAdapter$PreferenceLayout;)I

    move-result v0

    return v0
.end method
