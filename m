Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BA5224CE
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Feb 2024 13:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707052129; cv=none; b=RoewO7sbYHtEqYgnRUzi7tA58M5n1/FixZEU0AzGsfpVU8Ci9UEz9bYr8efXUdtEskg3TMhT4AvhZm4eP/+h8nQJhrPU+Lf11Xr7vGwAgi1YlVvQ8k9xRC9tl7IZyNNvR+9bSpJZ3ST294gC1b+P0EYCcFE63fRfdr9aFWqEHKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707052129; c=relaxed/simple;
	bh=W2Uy4rK0yHexWzAcdxDU8aNqs56IUFF2woEycZtPaug=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=kOrx58SeQol6U2PBZAE8kK0Lu7N2rgez0g0jMhixULqncC1khu35/o5VZtjYT8krwtjHU0KDHJOLVLL2LverbwK8xrnunORgdvxCEmpqPom2A/NU8fSj4+YgwbmJs5SUswvk5ePhyu0sH0BvDv/gjA7wT7dHjXzsDTG/gL2CbtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1707052128;
	bh=W2Uy4rK0yHexWzAcdxDU8aNqs56IUFF2woEycZtPaug=;
	h=Subject:From:To:Date:From;
	b=NfF3m8/saCW0tgNEELklGGwiXjmSH+ES/I4zkKx60xpyaF5NJcIVKnWN0deyuYm2K
	 q8uX4/wmZbOWL8BAEojg78n35lsBQm4a8n8A9zRHpRECPeOHmO/DEexbzFYg6xd76k
	 1qcPanY6dkXIEmYSQ0XOxz0ek/pSLzmiGhqK5Tf4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D461C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Feb 2024 13:08:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 54403E2F2EC
	for <linux-kernel-announce@vger.kernel.org>; Sun,  4 Feb 2024 13:08:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 04 Feb 2024 13:08:48 +0000
Message-Id: <20240204130848.release-6.8-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc3/v6.7

Linux kernel version 6.8-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc3/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc3/v6.8-rc2

