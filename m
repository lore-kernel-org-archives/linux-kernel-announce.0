Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA85AD21
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726681547; cv=none; b=PoXMDE5OWw42jhvXMy/UcXYi/2rnkITUWIRY1V9MZ2Cfv8nr9zEgTSrnypB1epk3wzwbRQJrAR3qCkW9DqFUzLbZBAobTKvSim4YX22+uoFM9rnNpkF1tPFQ83MzRHnoN8J80Jq4S1M7CovaX6enyYuiVzorC/Wa003OqG9OHHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726681547; c=relaxed/simple;
	bh=uEuMORUw0ib/e/JERafAMQKPgYJVgPyTWWgWDsiu2xo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Bgc3qVDO6H8lwaainaT6rzd3duT15RFGoTBDgcYOJiV1Ewf2cpMQi6lM1ZKP9b4PZ+9ngPL4qPZwT/X/4aguvFfrfTH/bfM+KEzFgm4oJ1gyIbj3D3r2ibpWrPu8Ib9IGINIKyiklTQnnSxDCeaN5slB1NklfAadxj+xC9qxg9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726681547;
	bh=uEuMORUw0ib/e/JERafAMQKPgYJVgPyTWWgWDsiu2xo=;
	h=Subject:From:To:Date:From;
	b=R07krRqj4YGZ3q3lIMR0nIneyR5Y6xYyjLFOFbHBH9NqD+2Hm6e3iv5U+Fo1AQyZJ
	 DJ/+/84BvDoYVz1DpXmSFKGVIaAHTXrW7POppTpxX1DOuuBPZ5Y4D1em0IRCkG3H4k
	 3J0ryzznaLvEb0GRxTcwdfAU6o3tiV2IPdGygwVQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E156C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:45:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3CBF83806655
	for <linux-kernel-announce@vger.kernel.org>; Wed, 18 Sep 2024 17:45:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.52 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 18 Sep 2024 17:45:47 +0000
Message-Id: <20240918174547.release-6.6.52@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.52
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.52.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.52.xz

Linux kernel version 6.6.52 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.52.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.52.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.52.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.52/v6.6.51

