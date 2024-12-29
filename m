Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F333224B29
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Dec 2024 21:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735509362; cv=none; b=Yw7zLr5/CoXoy6wGIK9+zCG198T0cdDNfO6P44DBfXUD3VHDhk0rXbRz4ERhEacO7c3oNpSc6LpPZtrhzaalh+P7JjbozOZXB1FB13EsNQOR7q7lXoErykddr0oT/cvBqCEbqgTnUcu+OLOFNs45+OMLG6y5T3WJTD5YIF0L8gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735509362; c=relaxed/simple;
	bh=rBGzGmnmJA9LUP1nwFrCwA9hAKrBw+P6zU1XDPv3GG4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=b7EAEzcfpUQpXmamtbiNa2joa9WFk77abWGLQqS/oH8wkh53f0hyUQ1NndSQfhWJbxIMa7nazFMiaKsV3TGRNf9KgJJ8LFh92edz6XnrGTt6JngabIsmbT/jC4bgZoSaOXc+1x1eB0ofGGoZ/JgaObo/eAeFhHwXhDCwEQyq3Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735509362;
	bh=rBGzGmnmJA9LUP1nwFrCwA9hAKrBw+P6zU1XDPv3GG4=;
	h=Subject:From:To:Date:From;
	b=spMG27L9it4fuB0VpmI9Nal/ygnVKZIdcR9x5VqYbr1cAIY8X+L6S596L9+ohCIrl
	 sHkhua+5zEFr6g0+vOjCeGWZfs+dyOkEpXsg/fcKdl36F4W1FlYQDuwg+DZDlwCAdg
	 DO4AWIIpMItKP5CmLdP/Lw9hlTx3VgonHFb0rnd0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA590C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Dec 2024 21:56:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75483380A964
	for <linux-kernel-announce@vger.kernel.org>; Sun, 29 Dec 2024 21:56:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 29 Dec 2024 21:56:21 +0000
Message-Id: <20241229215621.release-6.13-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.13-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.13-rc5/v6.12

Linux kernel version 6.13-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.13-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.13-rc5/v6.12

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13-rc5/v6.13-rc4

