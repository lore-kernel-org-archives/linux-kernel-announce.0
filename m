Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D64431A07B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784904053; cv=none; b=PSB8b4wQ9RRC8f3iE9k1TyWuWWwIDIvOo+8bMEle9wGfTbaTIvBgo1F1l/b9TK+m4KEc3w4DRmgaTIe5ucKe0/UDCTZyDwNDEBS9DaRI2ZfRLdcAuuN2b7CkJRES0RuvZqdFDU6mCIZwPuPDWgpgMiXBtZqfPMCLhZUvPXYIdyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784904053; c=relaxed/simple;
	bh=c6SZ5CkEWcSEnPyzrRWx+MyfqiYUjkTA8pzHz/b2Zlk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Jg7E5vPlT+n5oXUXELYzWm4r9PPJB5oK67H+MXs9wZ/JbqEed2Cy4lZ8AUgvRctUMeICxAgVjBwoMvnI9PrfJc9DpkW3lXK/lGNp3RlKOonjQQ78Qm+F03l4fCuCXS7tf5IM4LoSvI1ldoFzNHPlLpVIL+pROYV027xsDBXwWew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784904053;
	bh=c6SZ5CkEWcSEnPyzrRWx+MyfqiYUjkTA8pzHz/b2Zlk=;
	h=Subject:From:To:Date:From;
	b=wqD320yq62+WtrzLWAKaPWgyGk657Cb35/1yNMw4czDJHRo+ePiFg7x9x709NG3Ze
	 gCstehqxEwsb2ZhpQEcVu+fTbjWGxL7laTLLFk6llLwycYmeqnFp8l88sAKAWwCTjB
	 U+WAj9/E9TUPe8PwC53Li1ojgn+u/eQArms2oFZE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CC921F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:40:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3BCC3926386
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:40:19 +0000
Message-Id: <20260724144019.release-7.1.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.5.xz

Linux kernel version 7.1.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.5/v7.1.4

