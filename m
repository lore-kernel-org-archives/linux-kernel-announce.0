Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3771E2FFF85
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Oct 2025 23:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761521818; cv=none; b=aD5FwIxjGooh7MEeZanU1KY74KQe1iIrV+kXJvNtljUjcxMEdyTqogNG0uTR4LQI2OG/8hmNA9nTyFffOqIf+y/aWqimMQBy26gW6R7KPsIEybGG8MCh6wsCBNgMRJ7FoWT+dIcWkUG3Dx0axugrZkkvaSYhJh02Sb9wnRi2W48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761521818; c=relaxed/simple;
	bh=WwPDRHqf5wP90HDLvKyUsGF+QV8ghtUV2BHriHuI9+I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=odyAdgFiTM8b/bVnx7Mg6xTRkmQkTgNhL/gkIOqVZYH8xtFxnI0aYnFDqm+M7UiIkH6ab3WOiilrguNLr60KVjNXwLNlOsIC9cwiOTlX91/TMVYkcEub/62cRrL5KjjFGLwF6PyzaBmESBKQP3RxhclyYF1KF4yJ9aUMEF6c+fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761521818;
	bh=WwPDRHqf5wP90HDLvKyUsGF+QV8ghtUV2BHriHuI9+I=;
	h=Subject:From:To:Date:From;
	b=gT+aW0sR5E97x6JE+HRUFh47Mlj71Yn/zOpmlTGDDJgNglcrpXqBBWyRojQSbv3mQ
	 8NA8g+8kvT4Q13MzQd/jecetIv4iUFPg6FuoLMwO6ybsAW0auZdfH3XSIpGuh49kHw
	 iin5UUB5qZNnsi8AEOo0rf5/1xEwZQ3n2ORsc5Xw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7C3CC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Oct 2025 23:36:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74AC2380AAD4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 26 Oct 2025 23:36:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 26 Oct 2025 23:36:35 +0000
Message-Id: <20251026233635.release-6.18-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.18-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.18-rc3/v6.17

Linux kernel version 6.18-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.18-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.18-rc3/v6.17

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18-rc3/v6.18-rc2

