Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B97C152E12
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714660850; cv=none; b=tZJY2VGumJBtdMWWnPwGqdV6tGe2uDu5z+f9NobHiGKN67CTu14PKNUE81MGPbUnJQoy4ySXdBe0aB8U0mIFsOQMxn4E7KOpRnD1M/BQo4kyesWf0PA27W3P27Q/O1JhDkQ6jp86Ufo8CyhkXHMe0zENFS5fka36Wh8ltY5MU9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714660850; c=relaxed/simple;
	bh=17g9vN9OKDKlkmnxRPsrqD7YCEbo1p+N6osgWD1F5i0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GsIUGVSObqkOm32trCa3hXBmd+jdI0JrNh1byabKxTcI8A7FXUvHlCafDjDYt0sptf4NtR4dBLYyqaefeDixEubXGXWPAkcv9L4RZRya08x8zLwlGBjlY1mhIpkerP/S/r2JiiBE98UsG2wXnVOPMlHO+3Llz1CyJ5GP8cQx/QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714660850;
	bh=17g9vN9OKDKlkmnxRPsrqD7YCEbo1p+N6osgWD1F5i0=;
	h=Subject:From:To:Date:From;
	b=VysMq4Kbr38L66H+UYt2+JPerv7j424B/kgQmbSKVGF+zB1DVwGIcl5QpvHSUHkOj
	 xF60SoZ7ZGaqX+KLI2nViPJtNVqY48tlIfzPEoOIRy5Fzpm7VKAADJL56RABjMBFgF
	 Dq4Qo2YhKaneeuTCIQp0uE9NpYgLgU5lnIjUye1U=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02F9C32789
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:40:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C33E5C43443
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:40:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.216 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 14:40:49 +0000
Message-Id: <20240502144049.release-5.10.216@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.216
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.216.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.216.xz

Linux kernel version 5.10.216 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.216.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.216.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.216.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.216/v5.10.215

