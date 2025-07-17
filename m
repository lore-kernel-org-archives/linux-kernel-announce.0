Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F134C2FA63E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752770720; cv=none; b=bxuOXdN9UutyFH/Hs0OYeOIX3qyuf1qTcS4baWhHNqn3/0/zbqrBy5Y1qbXerxySgjrku2oSWniitUSVnCfyN1TJYKYaGxF6kk4gtb8IJZogFxsL9pZGuv+jei6AyZ/+xHnDt6GjiR9PNdMKS5Br/pVKAkdTBhVi3d5FNfIXcQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752770720; c=relaxed/simple;
	bh=qBuuypJld1IIfC4zPNivUnO9omc/H+7i8RfsxOjoWOo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=o/WufT16mzvyxP9KQXi2ovU74FyKHPNKrI5yjQcvGrg85BgLBv6SoOuvIN/okSmtiVjccDl3gyveEoIKnFl5jrrzVf7a1eB4i1P9jEQMm/RBk482+0MsMwzPH/pldFAvmTBKolfqf82eQjgxw5vxjf404HsMziTlZEl3O8dhGys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752770720;
	bh=qBuuypJld1IIfC4zPNivUnO9omc/H+7i8RfsxOjoWOo=;
	h=Subject:From:To:Date:From;
	b=E8foLntyGfVFpWrqi17MxgFx7bJh1cdA4bX8Uo9xCC9gho94wluyp9gJp5CIikFcF
	 OorukSIXGsfWSUxAndxrUf/EGC4XzPPlVjdeEndPg7rmvRF66Y+VibWitUSCJeohiu
	 YCAQoIm+ZG9hAlndlEiemBxH1zJxjIkNmhH2eTP8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 822ACC4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:45:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1754383BF47
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 16:45:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.240 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 16:45:39 +0000
Message-Id: <20250717164539.release-5.10.240@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.240
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.240.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.240.xz

Linux kernel version 5.10.240 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.240.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.240.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.240.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.240/v5.10.239

