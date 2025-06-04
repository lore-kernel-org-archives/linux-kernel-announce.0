Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6206528DEF4
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749041717; cv=none; b=g99Ahc65oSg2SL+dHDZF439si9Xr3HGoDqkom2HI/fGL5UWMc2UV3XkNn79EuT8Tw/480NcXV1EAv10crQooxaY3xQN1o/4gp89Ae9DyC8xsQF0DrNfUVtgduqI7H0EVKEq0nXMi8klCtRV8HpfSrXfOD6q3jpclyFgZFYQPC2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749041717; c=relaxed/simple;
	bh=kTA8Gbb93celbMTfhX/BWxbmfzkkVyuGjP5eAleIp0Y=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZLr/PVwjN/fShPMZPNVqz6ODdBN+U4wgzp1InZcK7to8mL0oFY4x/wJanMZ+dI4Q21lYUuo3aGRCrcEhMnsmwxD2PORSGg2z199VTAFNhv5Gk5nJE2LsTJcJ6uBYpqzoYQ2U/V3FAQ4fXr+yByMC6WgEIw3641rI3f/wia6HPx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749041717;
	bh=kTA8Gbb93celbMTfhX/BWxbmfzkkVyuGjP5eAleIp0Y=;
	h=Subject:From:To:Date:From;
	b=ncOf4o+t3VUZe1X7tlKamKiJOyr916ng9c/p76BsNL7Gs08EERL6uhYpoZVkqtte2
	 Mzy8VmA3EOqdakhiFRKpY9OdjpIuhcxQpQmxdpxTDtEDwh0gjKUsX/SCmdpayrlJIo
	 lCVgJaL89X72VoSGcU94lacCTUzkx6wgaxjlGZTI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA373C4CEEF
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 12:55:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3411F38111E5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 12:55:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.294 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 12:55:46 +0000
Message-Id: <20250604125546.release-5.4.294@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.294
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.294.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.294.xz

Linux kernel version 5.4.294 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.294.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.294.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.294.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.294/v5.4.293

