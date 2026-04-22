Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D00F31F99A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776870959; cv=none; b=qCmedaqvC1vPnID9q+aovL0FiUYGkoLY9Ro+lyLDLmoUEbkm4T7XzuqvkyoDsSC/6ajpVIpEBLeyHfe/DvIu5prjUwwGkrC03ouscTiJPJ2fAVD74qXzAyegL2X+ARGNlrR0zj9SJ1mJxWHAqVUiBP/rLemMlOmQIaLGbbAaCe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776870959; c=relaxed/simple;
	bh=tD1+2IBhMe76D3zjFsuTLBd2Txsn/mvi9w7Ej2pvAAY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LvozOGdHbdfaoRoCJ7x/sOFF6TzjcekGU868Ja+7qQ8y/Ji+kGgRz+gIq0evwYowrHpEOcy9PKh8oQhpm+x6rKef0ZjD7LnoWntD3VFL9x8XzSUWH+zBcbN+02qMB9yrsiMdFQVWW/aTv/O5vQ0CwXGdkb8IsrxEVNSmkHQGu1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776870959;
	bh=tD1+2IBhMe76D3zjFsuTLBd2Txsn/mvi9w7Ej2pvAAY=;
	h=Subject:From:To:Date:From;
	b=NR8BEkESXg4yICcXrP4VlGoXlLOsYx2F7E8T3tkvtz/eH2JkCxYhB5m0Qd9F4/igx
	 ioEEc08jeE5G/D63SNOPE2rt9T2hTduEkynA7Na83/LwFDHs5D+RG6mTEJvSvwxGif
	 Uhfd0ayHJq7h4/+P+PF4X7VFXNU6QXcilxKAjpA0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C090BC2BCAF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7CD073930232
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 15:15:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.24 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 22 Apr 2026 15:15:21 +0000
Message-Id: <20260422151521.release-6.18.24@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.24
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.24.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.24.xz

Linux kernel version 6.18.24 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.24.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.24.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.24.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.24/v6.18.23

