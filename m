Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4FE36D51D
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776502254; cv=none; b=Fl7Nq29x2GZKCduuUA3yWgk8teqJnq2mjxk9VyJzhsLHhUeyH9+ePt84dTQ6WAbD77q/pGpkAigza+MtM8I7AuRFe/RxtN5nlKp94qGs8VYyM7vrvnQBE+N7LB3uY2d2dQDnXPtW+aELBkTEpPihdDodF/JDrilNkjxrVcw5naY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776502254; c=relaxed/simple;
	bh=30HnN9Le0YedplovlSdexXcb8SQ/PnqBCUJn1TvifwU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P12ZqeNv0lT199i5TO5PVtC/ahwYqXT+AS9f8yf6PyxtD7PitlYDwNCZPnDmT0KxHSwqFvoStOcmfTRBBiwRYg+0fkAUEKqqNYbjvsZz8pSk/qKuE0xrJahayFZeEWPcmlb0s0IR6DJpvOL62aVZDllnitsvzvNoug8wjAkSDTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776502254;
	bh=30HnN9Le0YedplovlSdexXcb8SQ/PnqBCUJn1TvifwU=;
	h=Subject:From:To:Date:From;
	b=SLnnOW33+nSg4V48xTdQ6RGY2hwDkFpM5NxvQLkJQte/D0WfOXW16QQkeRlhMJL/O
	 MfDpCOtYKYBUcqmefKmsdSfumbfh/4jmM7dzIxuQZuQ/pNzf/qb0iybY/UyN4bCsjh
	 f01olAKnkXIpZqhTtuupXXpiL07F4dDkQrjoUk8U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B479CC19424
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:50:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCAC4380CEEE
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:50:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.169 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Apr 2026 08:50:20 +0000
Message-Id: <20260418085020.release-6.1.169@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.169
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.169.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.169.xz

Linux kernel version 6.1.169 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.169.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.169.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.169.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.169/v6.1.168

