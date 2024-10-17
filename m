Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493F9C147
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729171845; cv=none; b=hujznPJWPbC9XNBr8tKZZCA8RV2JdSpqcAoiFNuB/e+0fCkrNMoJf81YX9oF78oIraJLtIeZOmtS8jg9jIjTB+H3AaObZDNNbfiGVEJXKojQxSpkhXwYbB2qxTjx6ilXWYn9QPJgskg6CbdFwr2CSPDXp/BZ7WQ2LxM15qxwvWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729171845; c=relaxed/simple;
	bh=44plWVmsM0AB5Rb4U0a8ooYs/KbwXiswAM9eYqya3Fs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TcFdtOtu7tCxCLzKR1JrbO5oJeERVE9sgDQQ9aeSQYUer9GeNBOMMa9cI5ouOYYULnrCpmyppi4n74c+KubCXvt6sesGt+ciKQEeIkctIO3guz3Ml7PTw8oEFa+3zyHQLT/Mx5se1ysRSF2yT4Ar0ZIlBToWxU96DuTzTm/zxMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729171845;
	bh=44plWVmsM0AB5Rb4U0a8ooYs/KbwXiswAM9eYqya3Fs=;
	h=Subject:From:To:Date:From;
	b=slJKQchLO7TTT183H2/vwJE9xeOYhsg4NMu99OR0uMO006ZjRJtiv4wJhDD6AWJk3
	 hO55RohHJ+Qt2QOBeWXyw+ZW6y+5Jx6cNHM/y3KHhxw3nVmYXh5n017RcRX72S6Dwy
	 D7shFYC0FS9B8bZ2hwKcNbmEJ2yiXr5H0QskCbeE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC80AC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:30:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 775413809A8A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:30:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.168 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Oct 2024 13:30:48 +0000
Message-Id: <20241017133048.release-5.15.168@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.168
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.168.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.168.xz

Linux kernel version 5.15.168 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.168.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.168.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.168.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.168/v5.15.167

