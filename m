Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FB141DDEA
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791025227; cv=none; b=tIrkTGnT0/veMPopyogxfOn/5VB/cOKPr9xMZojPskig27Lgur7QSSMaNU6toiiv1KwDk47IlBANFsQkBuiZdlCaD4oCj5aUD/7DPJJanNhtVNW5F5LmB77A5Iu1lzz1fBo1d4OSSy9aL7GVG+FugK8vCGrgNaMZatt/cNsuRMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791025227; c=relaxed/simple;
	bh=rHfWILyQie3pvZGYMWALQtqcc0giKEiLrG4ccG5+gOs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=atAiMnCLIreHpPoNezakEazxVU28QVZAXb1rAaBUI6sn7xhUa48Y230ZhuDMiNLmpYImSi0i07kpu99jIEDpR8qqcdFlUO6wnNQ+5qEwyv8fOBaLMMlq1l0kb9ATK1OQzb2nqYYTiOrS8Gmqg94ogD71X+xBIUIWb9sbhyhq5cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791025227;
	bh=rHfWILyQie3pvZGYMWALQtqcc0giKEiLrG4ccG5+gOs=;
	h=Subject:From:To:Date:From;
	b=O2s1XWperRTDPtjvXIFg6LryQvuza79ui5SmtWph/axw9MOB+sDuCe+i6Mwwj3rnZ
	 rUqT9avxBU903VUTnRImyK4oaLEpIOaz6OFYvZcGN26GaWvmD/ERAMlqq9OFiIEL2u
	 d3W5vnqQD4y8KTwUnrmS467xH7ORygiskdcfVz5s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB0221F0089C
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B444F38119C4
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.112 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 11:00:22 +0000
Message-Id: <20261003110022.release-6.12.112@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.112
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.112.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.112.xz

Linux kernel version 6.12.112 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.112.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.112.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.112.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.112/v6.12.111

