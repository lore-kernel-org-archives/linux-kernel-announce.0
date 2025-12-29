Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834FA9460
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Dec 2025 03:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766979019; cv=none; b=QinG4Yn7g0mISxP5c4GBAPBF4BOUKpGoKKx4J2HhzmGtvQioj3uTM8rLZGKeqByUgPP9ro4WpOWrPolCk2RpLYnQIIVehSvv0s18CV4Mo/fUR3xWOuTFRdGF7tR7v/MupcvvVhbhDsDb1rTsO/5armKvnkYQXaRqC5iIj4q+EAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766979019; c=relaxed/simple;
	bh=I80PaYhjxnWViW14KWEYd5ZdntSOJa8tqCbaw6GRafA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=r0OAkjfNseWKl8E1XtqLaI/2eHNWMhbr66a4qfTTXYGf+KcgEKOv/hf59oTYZ9Y97xbURldhVlI507g8B739QGfDBsifRfeBKO8elKwf0G3l461WpcVHkJ8s9ZMO5tu1PJY/CTbdlSVWaa3eFCyO+TCysad25db8vB+oTloFzI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1766979019;
	bh=I80PaYhjxnWViW14KWEYd5ZdntSOJa8tqCbaw6GRafA=;
	h=Subject:From:To:Date:From;
	b=UbqOt82jbTn78xvUfWAQ1OT7+NFGSHK5sLegKbMl5a3Dvq+WDlxVqo7F00nyuaiZi
	 Q+hrc3NksmNQqpf35w03De9BG5Abw3GfCXIEb+9ap7JelP5p83YdpTs0yddOhZMQmF
	 z7Nwc/tDPpaMP8Y9LfyPhCcrOKQ6JVThykwC9+GM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA1B1C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Dec 2025 03:30:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 037CB3808200
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Dec 2025 03:27:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 29 Dec 2025 03:27:01 +0000
Message-Id: <20251229032701.release-6.19-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc3/v6.18

Linux kernel version 6.19-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc3/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc3/v6.19-rc2

