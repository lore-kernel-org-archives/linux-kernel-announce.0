Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8684256C89
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Jun 2025 21:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749417943; cv=none; b=oGplXTTaes2+JT5CUTKgq8JzyOobHDyHkT0PHVVA8863ew2jzXhV13it/BS/k8eNqoRrWGHxviYG+3VOPND1sv82skh0oJ73Mj3WlC+wo0TCdwlOpHFPrS1QjmXaWwfAO7Fpc6B84N9MQCqBncz28m44GKrp5gn950I3KYofD8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749417943; c=relaxed/simple;
	bh=0Buu6eZXPyxUBtExPctm0L0G/6lyfGgra/Pr3xnv6PQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=p9TsAh7r9Z8QPmjVCNIo7mczQuO7VQ4vRcPVsCnFUZGlUE+wDVibyAyZ30P+WSIQUIx++AeHJdLhfVG7gks55Ftrj5owzVTFq+/8//fwySchJwgLyo18QO+TJakNUx1yxwGwjZPRHgRQLXw3cyt/mrKcrsAVj0SPomjUWEy7yj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749417943;
	bh=0Buu6eZXPyxUBtExPctm0L0G/6lyfGgra/Pr3xnv6PQ=;
	h=Subject:From:To:Date:From;
	b=VgJwEjyJSrP6OlzQYVDLjSTZ3OfkXIR05V41zANvIeCHMDMEjsOj+ocuMIAD06P68
	 +sjbOpQ0i4XqNG5bqOzaTabm5JU8b51YAkqru81hVq4jjvwk4lztMycmpCkc7lYO8n
	 PGTyzVr1VkK6J4Dj1GmhbWcydsAUSR08JF55yLTM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65245C4CEEE
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Jun 2025 21:25:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74678380AAE2
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Jun 2025 21:26:14 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 08 Jun 2025 21:26:13 +0000
Message-Id: <20250608212613.release-6.16-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc1/v6.15

Linux kernel version 6.16-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc1/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc1/v6.15

